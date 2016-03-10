  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  xorq %rax, %rax          #  1     0     3      OPC=xorq_r64_r64    
  movslq %ebx, %rax        #  2     0x3   3      OPC=movslq_r64_r32  
  callq .read_zf_into_rcx  #  3     0x6   5      OPC=callq_label     
  callq .clear_cf          #  4     0xb   5      OPC=callq_label     
  adcl %ecx, %eax          #  5     0x10  2      OPC=adcl_r32_r32    
  movq %rax, %rbx          #  6     0x12  3      OPC=movq_r64_r64    
  retq                     #  7     0x15  1      OPC=retq            
                                                                     
.size target, .-target
