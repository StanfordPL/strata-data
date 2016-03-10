  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text               #  Line  RIP   Bytes  Opcode                
.target:             #        0     0      OPC=<label>           
  movq $0x40, %rbx   #  1     0     10     OPC=movq_r64_imm64    
  notw %bx           #  2     0xa   3      OPC=notw_r16          
  movq %xmm1, %rax   #  3     0xd   5      OPC=movq_r64_xmm      
  cmpw %bx, %bx      #  4     0x12  3      OPC=cmpw_r16_r16      
  xchgw %ax, %bx     #  5     0x15  3      OPC=xchgw_r16_r16     
  cmovnbew %bx, %bx  #  6     0x18  4      OPC=cmovnbew_r16_r16  
  retq               #  7     0x1c  1      OPC=retq              
                                                                 
.size target, .-target
