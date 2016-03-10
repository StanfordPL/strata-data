  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                              #  Line  RIP   Bytes  Opcode             
.target:                            #        0     0      OPC=<label>        
  movsbw %ah, %cx                   #  1     0     4      OPC=movsbw_r16_rh  
  callq .move_016_008_cx_r10b_r11b  #  2     0x4   5      OPC=callq_label    
  xaddb %cl, %cl                    #  3     0x9   3      OPC=xaddb_r8_r8    
  movzbl %cl, %r11d                 #  4     0xc   4      OPC=movzbl_r32_r8  
  callq .move_008_016_r10b_r11b_dx  #  5     0x10  5      OPC=callq_label    
  movsbl %dl, %eax                  #  6     0x15  3      OPC=movsbl_r32_r8  
  addw %dx, %ax                     #  7     0x18  3      OPC=addw_r16_r16   
  shlb $0x1, %r10b                  #  8     0x1b  3      OPC=shlb_r8_one    
  retq                              #  9     0x1e  1      OPC=retq           
                                                                             
.size target, .-target
