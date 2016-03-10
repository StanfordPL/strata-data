  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode            
.target:                             #        0     0      OPC=<label>       
  callq .move_032_016_ebx_r8w_r9w    #  1     0     5      OPC=callq_label   
  callq .move_064_032_rbx_r10d_r11d  #  2     0x5   5      OPC=callq_label   
  callq .move_016_032_r8w_r9w_ecx    #  3     0xa   5      OPC=callq_label   
  callq .write_cl_to_pf              #  4     0xf   5      OPC=callq_label   
  setpo %r11b                        #  5     0x14  4      OPC=setpo_r8      
  addq %rbx, %rbx                    #  6     0x18  3      OPC=addq_r64_r64  
  rcll $0x1, %r11d                   #  7     0x1b  3      OPC=rcll_r32_one  
  retq                               #  8     0x1e  1      OPC=retq          
                                                                             
.size target, .-target
