  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text               #  Line  RIP   Bytes  Opcode              
.target:             #        0     0      OPC=<label>         
  movq $0x5, %r11    #  1     0     10     OPC=movq_r64_imm64  
  sarl $0x1, %r11d   #  2     0xa   3      OPC=sarl_r32_one    
  addb %r11b, %r11b  #  3     0xd   3      OPC=addb_r8_r8      
  sbbb %ah, %bl      #  4     0x10  2      OPC=sbbb_r8_rh      
  retq               #  5     0x12  1      OPC=retq            
                                                               
.size target, .-target
