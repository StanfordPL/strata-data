  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP   Bytes  Opcode              
.target:             #        0     0      OPC=<label>         
  movsbq %cl, %rsp   #  1     0     4      OPC=movsbq_r64_r8   
  xorq %r13, %r13    #  2     0x4   3      OPC=xorq_r64_r64    
  cmoveq %r13, %r13  #  3     0x7   4      OPC=cmoveq_r64_r64  
  movslq %r13d, %r8  #  4     0xb   3      OPC=movslq_r64_r32  
  adcq %r13, %rsp    #  5     0xe   3      OPC=adcq_r64_r64    
  movzbl %bl, %ecx   #  6     0x11  3      OPC=movzbl_r32_r8   
  xaddl %r8d, %r13d  #  7     0x14  4      OPC=xaddl_r32_r32   
  adcb %spl, %bl     #  8     0x18  3      OPC=adcb_r8_r8      
  retq               #  9     0x1b  1      OPC=retq            
                                                               
.size target, .-target
