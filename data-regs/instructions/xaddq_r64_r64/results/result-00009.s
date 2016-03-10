  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text               #  Line  RIP  Bytes  Opcode                
.target:             #        0    0      OPC=<label>           
  addq %rbx, %rcx    #  1     0    3      OPC=addq_r64_r64      
  xchgq %rbx, %rcx   #  2     0x3  3      OPC=xchgq_r64_r64     
  cmovngew %cx, %cx  #  3     0x6  4      OPC=cmovngew_r16_r16  
  retq               #  4     0xa  1      OPC=retq              
                                                                
.size target, .-target
