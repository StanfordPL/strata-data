  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode             
.target:                   #        0     0      OPC=<label>        
  callq .read_cf_into_rcx  #  1     0     5      OPC=callq_label    
  setnae %ch               #  2     0x5   3      OPC=setnae_rh      
  xorq %rax, %rax          #  3     0x8   3      OPC=xorq_r64_r64   
  seto %cl                 #  4     0xb   3      OPC=seto_r8        
  xchgl %eax, %ecx         #  5     0xe   2      OPC=xchgl_r32_r32  
  retq                     #  6     0x10  1      OPC=retq           
                                                                    
.size target, .-target
