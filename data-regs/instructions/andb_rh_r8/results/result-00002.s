  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP   Bytes  Opcode              
.target:            #        0     0      OPC=<label>         
  movq $0x1, %r11   #  1     0     10     OPC=movq_r64_imm64  
  andb %ah, %bl     #  2     0xa   2      OPC=andb_r8_rh      
  roll $0x1, %r11d  #  3     0xc   3      OPC=roll_r32_one    
  xchgb %ah, %bl    #  4     0xf   2      OPC=xchgb_r8_rh     
  retq              #  5     0x11  1      OPC=retq            
                                                              
.size target, .-target
