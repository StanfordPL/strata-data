  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                
.target:                                          #        0     0      OPC=<label>           
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label       
  callq .move_byte_5_of_ymm1_to_r9b               #  2     0x5   5      OPC=callq_label       
  movmskpd %xmm10, %ebx                           #  3     0xa   5      OPC=movmskpd_r32_xmm  
  addb %r9b, %bl                                  #  4     0xf   3      OPC=addb_r8_r8        
  rclb $0x1, %bh                                  #  5     0x12  2      OPC=rclb_rh_one       
  retq                                            #  6     0x14  1      OPC=retq              
                                                                                              
.size target, .-target
