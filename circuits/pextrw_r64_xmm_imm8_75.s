  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode              
.target:                                    #        0     0      OPC=<label>         
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label     
  movq $0x8, %r9                            #  2     0x5   10     OPC=movq_r64_imm64  
  callq .move_032_016_edx_r8w_r9w           #  3     0xf   5      OPC=callq_label     
  movslq %r9d, %rbx                         #  4     0x14  3      OPC=movslq_r64_r32  
  retq                                      #  5     0x17  1      OPC=retq            
                                                                                      
.size target, .-target
