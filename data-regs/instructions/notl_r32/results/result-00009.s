  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text            #  Line  RIP  Bytes  Opcode           
.target:          #        0    0      OPC=<label>      
  orl %ebx, %ebx  #  1     0    2      OPC=orl_r32_r32  
  notq %rbx       #  2     0x2  3      OPC=notq_r64     
  incl %ebx       #  3     0x5  2      OPC=incl_r32     
  decl %ebx       #  4     0x7  2      OPC=decl_r32     
  retq            #  5     0x9  1      OPC=retq         
                                                        
.size target, .-target
