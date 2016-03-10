  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP   Bytes  Opcode                  
.target:                       #        0     0      OPC=<label>             
  vmovq %xmm1, %xmm7           #  1     0     4      OPC=vmovq_xmm_xmm       
  vpandn %xmm7, %xmm7, %xmm13  #  2     0x4   4      OPC=vpandn_xmm_xmm_xmm  
  vpmovzxbq %xmm13, %xmm2      #  3     0x8   5      OPC=vpmovzxbq_xmm_xmm   
  pmovzxbd %xmm2, %xmm1        #  4     0xd   5      OPC=pmovzxbd_xmm_xmm    
  retq                         #  5     0x12  1      OPC=retq                
                                                                             
.size target, .-target
