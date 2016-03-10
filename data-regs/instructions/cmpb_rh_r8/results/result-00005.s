  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movsbq %bl, %r11                #  1     0     4      OPC=movsbq_r64_r8   
  movq $0xfffffffffffffffe, %rdx  #  2     0x4   10     OPC=movq_r64_imm64  
  xchgb %dl, %r11b                #  3     0xe   3      OPC=xchgb_r8_r8     
  subb %dl, %ah                   #  4     0x11  2      OPC=subb_rh_r8      
  retq                            #  5     0x13  1      OPC=retq            
                                                                            
.size target, .-target
