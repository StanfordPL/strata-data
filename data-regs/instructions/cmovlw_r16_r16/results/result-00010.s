  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text               #  Line  RIP  Bytes  Opcode                
.target:             #        0    0      OPC=<label>           
  cmovngew %cx, %bx  #  1     0    4      OPC=cmovngew_r16_r16  
  movswl %bx, %ebp   #  2     0x4  3      OPC=movswl_r32_r16    
  shlw $0x1, %cx     #  3     0x7  3      OPC=shlw_r16_one      
  cmovcw %bp, %bx    #  4     0xa  4      OPC=cmovcw_r16_r16    
  retq               #  5     0xe  1      OPC=retq              
                                                                
.size target, .-target
