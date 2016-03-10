  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP   Bytes  Opcode              
.target:           #        0     0      OPC=<label>         
  xorb %al, %al    #  1     0     2      OPC=xorb_r8_r8      
  xchgb %al, %bh   #  2     0x2   2      OPC=xchgb_rh_r8     
  movq $0x6, %rdi  #  3     0x4   10     OPC=movq_r64_imm64  
  cmovsw %di, %di  #  4     0xe   4      OPC=cmovsw_r16_r16  
  cmovcw %di, %ax  #  5     0x12  4      OPC=cmovcw_r16_r16  
  orb %al, %ah     #  6     0x16  2      OPC=orb_rh_r8       
  retq             #  7     0x18  1      OPC=retq            
                                                             
.size target, .-target
