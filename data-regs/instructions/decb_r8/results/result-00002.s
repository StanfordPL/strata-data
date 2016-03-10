  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movq $0xfffffffffffffffb, %rax  #  1     0     10     OPC=movq_r64_imm64  
  shll $0x1, %eax                 #  2     0xa   2      OPC=shll_r32_one    
  movb %ah, %al                   #  3     0xc   2      OPC=movb_r8_rh      
  clc                             #  4     0xe   1      OPC=clc             
  xchgw %ax, %ax                  #  5     0xf   3      OPC=xchgw_r16_r16   
  adcb %al, %bl                   #  6     0x12  2      OPC=adcb_r8_r8      
  retq                            #  7     0x14  1      OPC=retq            
                                                                            
.size target, .-target
