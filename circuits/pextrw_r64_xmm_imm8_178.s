  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode              
.target:                                    #        0     0      OPC=<label>         
  movq $0x80, %rbx                          #  1     0     10     OPC=movq_r64_imm64  
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  2     0xa   5      OPC=callq_label     
  movzwl %dx, %esp                          #  3     0xf   3      OPC=movzwl_r32_r16  
  xaddw %bx, %sp                            #  4     0x12  4      OPC=xaddw_r16_r16   
  retq                                      #  5     0x16  1      OPC=retq            
                                                                                      
.size target, .-target
