  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode              
.target:                                    #        0     0      OPC=<label>         
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label     
  movq $0x6, %rbx                           #  2     0x5   10     OPC=movq_r64_imm64  
  callq .move_016_008_dx_r8b_r9b            #  3     0xf   5      OPC=callq_label     
  movb %r9b, %bl                            #  4     0x14  3      OPC=movb_r8_r8      
  retq                                      #  5     0x17  1      OPC=retq            
                                                                                      
.size target, .-target
