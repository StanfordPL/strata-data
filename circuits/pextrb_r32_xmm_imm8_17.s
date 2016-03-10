  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  vpmovzxbq %xmm1, %xmm13            #  1     0     5      OPC=vpmovzxbq_xmm_xmm        
  vsubsd %xmm1, %xmm13, %xmm1        #  2     0x5   4      OPC=vsubsd_xmm_xmm_xmm       
  vpunpckhqdq %xmm1, %xmm13, %xmm11  #  3     0x9   4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vmovq %xmm11, %rbx                 #  4     0xd   5      OPC=vmovq_r64_xmm            
  retq                               #  5     0x12  1      OPC=retq                     
                                                                                        
.size target, .-target
