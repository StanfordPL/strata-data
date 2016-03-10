  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                        
.target:                              #        0     0      OPC=<label>                   
  vpbroadcastq %xmm1, %xmm0           #  1     0     5      OPC=vpbroadcastq_xmm_xmm      
  movlhps %xmm0, %xmm1                #  2     0x5   3      OPC=movlhps_xmm_xmm           
  callq .move_128_64_xmm1_xmm8_xmm9   #  3     0x8   5      OPC=callq_label               
  vfnmsub132ss %xmm9, %xmm1, %xmm1    #  4     0xd   5      OPC=vfnmsub132ss_xmm_xmm_xmm  
  callq .move_byte_14_of_ymm1_to_r8b  #  5     0x12  5      OPC=callq_label               
  movzbl %r8b, %ebx                   #  6     0x17  4      OPC=movzbl_r32_r8             
  retq                                #  7     0x1b  1      OPC=retq                      
                                                                                          
.size target, .-target
