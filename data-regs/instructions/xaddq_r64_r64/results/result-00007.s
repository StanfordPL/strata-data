  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movb %bl, %bl     #  1     0    2      OPC=movb_r8_r8     
  addq %rbx, %rcx   #  2     0x2  3      OPC=addq_r64_r64   
  xchgq %rbx, %rcx  #  3     0x5  3      OPC=xchgq_r64_r64  
  retq              #  4     0x8  1      OPC=retq           
                                                            
.size target, .-target
