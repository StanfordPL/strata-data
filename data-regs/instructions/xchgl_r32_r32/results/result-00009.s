  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  callq .move_032_016_ecx_r12w_r13w  #  1     0     5      OPC=callq_label     
  callq .clear_cf                    #  2     0x5   5      OPC=callq_label     
  movq $0x0, %rcx                    #  3     0xa   10     OPC=movq_r64_imm64  
  adcl %ebx, %ecx                    #  4     0x14  2      OPC=adcl_r32_r32    
  callq .read_sf_into_rbx            #  5     0x16  5      OPC=callq_label     
  callq .move_016_032_r12w_r13w_ebx  #  6     0x1b  5      OPC=callq_label     
  retq                               #  7     0x20  1      OPC=retq            
                                                                               
.size target, .-target
