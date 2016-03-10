  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  movq $0x6, %rbx          #  1     0     10     OPC=movq_r64_imm64  
  incw %bx                 #  2     0xa   3      OPC=incw_r16        
  adcl %ebx, %ebx          #  3     0xd   2      OPC=adcl_r32_r32    
  callq .read_pf_into_rbx  #  4     0xf   5      OPC=callq_label     
  retq                     #  5     0x14  1      OPC=retq            
                                                                     
.size target, .-target
