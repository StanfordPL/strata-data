  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    8 bytes

# Text                            #  Line  RIP  Bytes  Opcode              
.target:                          #        0    0      OPC=<label>         
  xorq %rbx, %rbx                 #  1     0    3      OPC=xorq_r64_r64    
  callq .move_128_064_xmm1_r8_r9  #  2     0x3  5      OPC=callq_label     
  orb %bh, %bh                    #  3     0x8  2      OPC=orb_rh_rh       
  cmovzq %r8, %rbx                #  4     0xa  4      OPC=cmovzq_r64_r64  
  retq                            #  5     0xe  1      OPC=retq            
                                                                           
.size target, .-target
