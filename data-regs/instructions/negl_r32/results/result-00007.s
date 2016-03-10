  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP   Bytes  Opcode             
.target:                   #        0     0      OPC=<label>        
  xorq %rax, %rax          #  1     0     3      OPC=xorq_r64_r64   
  xchgl %ebx, %eax         #  2     0x3   1      OPC=xchgl_eax_r32  
  callq .read_pf_into_rbx  #  3     0x4   5      OPC=callq_label    
  notq %rax                #  4     0x9   3      OPC=notq_r64       
  addl %ebx, %eax          #  5     0xc   2      OPC=addl_r32_r32   
  xchgl %ebx, %eax         #  6     0xe   2      OPC=xchgl_r32_r32  
  cmc                      #  7     0x10  1      OPC=cmc            
  retq                     #  8     0x11  1      OPC=retq           
                                                                    
.size target, .-target
