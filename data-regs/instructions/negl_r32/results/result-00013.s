  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  notl %ebx          #  1     0    2      OPC=notl_r32        
  xorq %rax, %rax    #  2     0x2  3      OPC=xorq_r64_r64    
  stc                #  3     0x5  1      OPC=stc             
  movzwl %ax, %r13d  #  4     0x6  4      OPC=movzwl_r32_r16  
  adcl %r13d, %ebx   #  5     0xa  3      OPC=adcl_r32_r32    
  cmc                #  6     0xd  1      OPC=cmc             
  retq               #  7     0xe  1      OPC=retq            
                                                              
.size target, .-target
