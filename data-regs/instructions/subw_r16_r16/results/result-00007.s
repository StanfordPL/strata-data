  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP   Bytes  Opcode               
.target:            #        0     0      OPC=<label>          
  xorq %rax, %rax   #  1     0     3      OPC=xorq_r64_r64     
  addb %al, %al     #  2     0x3   2      OPC=addb_r8_r8       
  movzbq %bl, %rdx  #  3     0x5   4      OPC=movzbq_r64_r8    
  rcll $0x1, %eax   #  4     0x9   2      OPC=rcll_r32_one     
  addb %ah, %ch     #  5     0xb   2      OPC=addb_rh_rh       
  cmovgew %bx, %bx  #  6     0xd   4      OPC=cmovgew_r16_r16  
  xorb %dh, %bl     #  7     0x11  2      OPC=xorb_r8_rh       
  sbbw %cx, %bx     #  8     0x13  3      OPC=sbbw_r16_r16     
  retq              #  9     0x16  1      OPC=retq             
                                                               
.size target, .-target
