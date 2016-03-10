  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP   Bytes  Opcode              
.target:            #        0     0      OPC=<label>         
  setne %cl         #  1     0     3      OPC=setne_r8        
  clc               #  2     0x3   1      OPC=clc             
  setna %ch         #  3     0x4   3      OPC=setna_rh        
  movq $0x80, %rax  #  4     0x7   10     OPC=movq_r64_imm64  
  xchgw %ax, %cx    #  5     0x11  2      OPC=xchgw_r16_ax    
  retq              #  6     0x13  1      OPC=retq            
                                                              
.size target, .-target
