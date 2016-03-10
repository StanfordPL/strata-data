  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode             
.target:                                    #        0     0      OPC=<label>        
  xorq %rbx, %rbx                           #  1     0     3      OPC=xorq_r64_r64   
  seta %cl                                  #  2     0x3   3      OPC=seta_r8        
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  3     0x6   5      OPC=callq_label    
  movsbq %cl, %rbx                          #  4     0xb   4      OPC=movsbq_r64_r8  
  xaddw %dx, %bx                            #  5     0xf   4      OPC=xaddw_r16_r16  
  retq                                      #  6     0x13  1      OPC=retq           
                                                                                     
.size target, .-target
