  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode             
.target:                             #        0     0      OPC=<label>        
  xchgl %ecx, %ebx                   #  1     0     2      OPC=xchgl_r32_r32  
  callq .move_064_032_rbx_r12d_r13d  #  2     0x2   5      OPC=callq_label    
  callq .move_016_032_r12w_r13w_edx  #  3     0x7   5      OPC=callq_label    
  incb %dl                           #  4     0xc   2      OPC=incb_r8        
  shll $0x1, %edx                    #  5     0xe   2      OPC=shll_r32_one   
  adcl %ecx, %ebx                    #  6     0x10  2      OPC=adcl_r32_r32   
  retq                               #  7     0x12  1      OPC=retq           
                                                                              
.size target, .-target
