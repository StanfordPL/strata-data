  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP   Bytes  Opcode              
.target:             #        0     0      OPC=<label>         
  movq $0x20, %r11   #  1     0     10     OPC=movq_r64_imm64  
  rolb $0x1, %r11b   #  2     0xa   3      OPC=rolb_r8_one     
  setnz %ah          #  3     0xd   3      OPC=setnz_rh        
  cmoveq %r11, %rax  #  4     0x10  4      OPC=cmoveq_r64_r64  
  retq               #  5     0x14  1      OPC=retq            
                                                               
.size target, .-target
