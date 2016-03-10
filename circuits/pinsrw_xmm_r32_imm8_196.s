  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                
.target:                              #        0     0      OPC=<label>           
  callq .move_128_064_xmm1_r8_r9      #  1     0     5      OPC=callq_label       
  xorps %xmm9, %xmm9                  #  2     0x5   4      OPC=xorps_xmm_xmm     
  movmskpd %xmm9, %rax                #  3     0x9   5      OPC=movmskpd_r64_xmm  
  callq .move_r8b_to_byte_14_of_ymm1  #  4     0xe   5      OPC=callq_label       
  callq .move_byte_12_of_ymm1_to_r9b  #  5     0x13  5      OPC=callq_label       
  xchgw %ax, %bx                      #  6     0x18  2      OPC=xchgw_r16_ax      
  xaddw %r9w, %ax                     #  7     0x1a  5      OPC=xaddw_r16_r16     
  callq .move_064_128_r8_r9_xmm1      #  8     0x1f  5      OPC=callq_label       
  retq                                #  9     0x24  1      OPC=retq              
                                                                                  
.size target, .-target
