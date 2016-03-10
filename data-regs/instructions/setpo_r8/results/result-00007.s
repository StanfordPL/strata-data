  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode            
.target:                   #        0     0      OPC=<label>       
  callq .read_pf_into_rcx  #  1     0     5      OPC=callq_label   
  callq .clear_cf          #  2     0x5   5      OPC=callq_label   
  callq .read_cf_into_rbx  #  3     0xa   5      OPC=callq_label   
  movq %rbx, %r11          #  4     0xf   3      OPC=movq_r64_r64  
  shll $0x1, %r11d         #  5     0x12  3      OPC=shll_r32_one  
  adcl %r11d, %ecx         #  6     0x15  3      OPC=adcl_r32_r32  
  callq .read_pf_into_rbx  #  7     0x18  5      OPC=callq_label   
  retq                     #  8     0x1d  1      OPC=retq          
                                                                   
.size target, .-target
