  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                                      #  Line  RIP   Bytes  Opcode              
.target:                                    #        0     0      OPC=<label>         
  movq $0x0, %rdx                           #  1     0     10     OPC=movq_r64_imm64  
  setz %dh                                  #  2     0xa   3      OPC=setz_rh         
  movslq %edx, %r10                         #  3     0xd   3      OPC=movslq_r64_r32  
  movswq %r10w, %r11                        #  4     0x10  4      OPC=movswq_r64_r16  
  callq .move_064_128_r10_r11_xmm1          #  5     0x14  5      OPC=callq_label     
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  6     0x19  5      OPC=callq_label     
  retq                                      #  7     0x1e  1      OPC=retq            
                                                                                      
.size target, .-target
