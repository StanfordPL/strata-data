  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                               #  Line  RIP   Bytes  Opcode                
.target:                             #        0     0      OPC=<label>           
  vmovdqa %xmm2, %xmm1               #  1     0     4      OPC=vmovdqa_xmm_xmm   
  xorb %r8b, %r8b                    #  2     0x4   3      OPC=xorb_r8_r8        
  callq .move_r8b_to_byte_1_of_ymm1  #  3     0x7   5      OPC=callq_label       
  cvtss2sd %xmm3, %xmm1              #  4     0xc   4      OPC=cvtss2sd_xmm_xmm  
  retq                               #  5     0x10  1      OPC=retq              
                                                                                 
.size target, .-target
