  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode              
.target:                                    #        0     0      OPC=<label>         
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label     
  movq $0x0, %rbx                           #  2     0x5   10     OPC=movq_r64_imm64  
  xaddw %r9w, %bx                           #  3     0xf   5      OPC=xaddw_r16_r16   
  retq                                      #  4     0x14  1      OPC=retq            
                                                                                      
.size target, .-target
