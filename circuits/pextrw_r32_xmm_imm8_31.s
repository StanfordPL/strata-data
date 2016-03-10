  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode               
.target:                                    #        0     0      OPC=<label>          
  movq $0x0, %rbx                           #  1     0     10     OPC=movq_r64_imm64   
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  2     0xa   5      OPC=callq_label      
  xchgl %r9d, %edx                          #  3     0xf   3      OPC=xchgl_r32_r32    
  callq .move_032_016_edx_r10w_r11w         #  4     0x12  5      OPC=callq_label      
  addb %bh, %bh                             #  5     0x17  2      OPC=addb_rh_rh       
  cmovnaw %r11w, %bx                        #  6     0x19  5      OPC=cmovnaw_r16_r16  
  retq                                      #  7     0x1e  1      OPC=retq             
                                                                                       
.size target, .-target
