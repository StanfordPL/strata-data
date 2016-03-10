  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                
.target:                              #        0     0      OPC=<label>           
  vmovups %xmm1, %xmm5                #  1     0     4      OPC=vmovups_xmm_xmm   
  pxor %xmm5, %xmm1                   #  2     0x4   4      OPC=pxor_xmm_xmm      
  callq .move_byte_14_of_ymm1_to_r8b  #  3     0x8   5      OPC=callq_label       
  callq .move_r8b_to_byte_9_of_ymm1   #  4     0xd   5      OPC=callq_label       
  cvtss2sd %xmm1, %xmm1               #  5     0x12  4      OPC=cvtss2sd_xmm_xmm  
  retq                                #  6     0x16  1      OPC=retq              
                                                                                  
.size target, .-target
