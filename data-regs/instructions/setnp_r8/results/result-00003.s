  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movq $0xfffffffffffffffd, %rbx  #  1     0     10     OPC=movq_r64_imm64  
  callq .clear_cf                 #  2     0xa   5      OPC=callq_label     
  callq .read_pf_into_rcx         #  3     0xf   5      OPC=callq_label     
  adcl %ebx, %ecx                 #  4     0x14  2      OPC=adcl_r32_r32    
  callq .write_cl_to_zf           #  5     0x16  5      OPC=callq_label     
  callq .read_zf_into_rbx         #  6     0x1b  5      OPC=callq_label     
  retq                            #  7     0x20  1      OPC=retq            
                                                                            
.size target, .-target
