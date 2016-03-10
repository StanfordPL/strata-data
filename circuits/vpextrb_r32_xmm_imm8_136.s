  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                     #  Line  RIP  Bytes  Opcode                  
.target:                   #        0    0      OPC=<label>             
  punpckhqdq %xmm1, %xmm1  #  1     0    4      OPC=punpckhqdq_xmm_xmm  
  vpmovzxbq %xmm1, %xmm7   #  2     0x4  5      OPC=vpmovzxbq_xmm_xmm   
  vmovd %xmm7, %ebx        #  3     0x9  4      OPC=vmovd_r32_xmm       
  orb %bl, %bl             #  4     0xd  2      OPC=orb_r8_r8           
  retq                     #  5     0xf  1      OPC=retq                
                                                                        
.size target, .-target
