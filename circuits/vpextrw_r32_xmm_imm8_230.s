  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode             
.target:                                    #        0     0      OPC=<label>        
  callq .move_byte_8_of_ymm1_to_r9b         #  1     0     5      OPC=callq_label    
  salb $0x1, %r9b                           #  2     0x5   3      OPC=salb_r8_one    
  callq .read_sf_into_rbx                   #  3     0x8   5      OPC=callq_label    
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  4     0xd   5      OPC=callq_label    
  rolb $0x1, %ah                            #  5     0x12  2      OPC=rolb_rh_one    
  xchgw %bx, %ax                            #  6     0x14  3      OPC=xchgw_r16_r16  
  xchgw %bx, %r9w                           #  7     0x17  4      OPC=xchgw_r16_r16  
  retq                                      #  8     0x1b  1      OPC=retq           
                                                                                     
.size target, .-target
