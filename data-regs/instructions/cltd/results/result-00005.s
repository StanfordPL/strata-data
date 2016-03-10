  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    2 bytes

# Text             #  Line  RIP   Bytes  Opcode            
.target:           #        0     0      OPC=<label>       
  xorq %rdx, %rdx  #  1     0     3      OPC=xorq_r64_r64  
  shlb $0x1, %dl   #  2     0x3   2      OPC=shlb_r8_one   
  rcll $0x1, %eax  #  3     0x5   2      OPC=rcll_r32_one  
  callq .clear_zf  #  4     0x7   5      OPC=callq_label   
  setnbe %dl       #  5     0xc   3      OPC=setnbe_r8     
  decl %edx        #  6     0xf   2      OPC=decl_r32      
  retq             #  7     0x11  1      OPC=retq          
                                                           
.size target, .-target
