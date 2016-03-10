  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  vmovq %xmm1, %xmm4                 #  1     0     4      OPC=vmovq_xmm_xmm            
  vmovups %xmm4, %xmm13              #  2     0x4   4      OPC=vmovups_xmm_xmm          
  vpunpckhqdq %xmm4, %xmm13, %xmm13  #  3     0x8   4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  movdqa %xmm13, %xmm1               #  4     0xc   5      OPC=movdqa_xmm_xmm           
  retq                               #  5     0x11  1      OPC=retq                     
                                                                                        
.size target, .-target
