  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                              #  Line  RIP   Bytes  Opcode             
.target:                            #        0     0      OPC=<label>        
  movsbw %ah, %bx                   #  1     0     4      OPC=movsbw_r16_rh  
  callq .move_016_008_bx_r12b_r13b  #  2     0x4   5      OPC=callq_label    
  movzbq %r12b, %rdx                #  3     0x9   4      OPC=movzbq_r64_r8  
  addw %bx, %bx                     #  4     0xd   3      OPC=addw_r16_r16   
  movsbl %dl, %r11d                 #  5     0x10  4      OPC=movsbl_r32_r8  
  shlb $0x1, %r11b                  #  6     0x14  3      OPC=shlb_r8_one    
  movb %bl, %ah                     #  7     0x17  2      OPC=movb_rh_r8     
  retq                              #  8     0x19  1      OPC=retq           
                                                                             
.size target, .-target
