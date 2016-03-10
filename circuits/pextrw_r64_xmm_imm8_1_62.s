  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode               
.target:                                    #        0     0      OPC=<label>          
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label      
  movzbq %r8b, %rcx                         #  2     0x5   4      OPC=movzbq_r64_r8    
  orb %dh, %cl                              #  3     0x9   2      OPC=orb_r8_rh        
  callq .read_sf_into_rbx                   #  4     0xb   5      OPC=callq_label      
  cmovnow %r9w, %bx                         #  5     0x10  5      OPC=cmovnow_r16_r16  
  retq                                      #  6     0x15  1      OPC=retq             
                                                                                       
.size target, .-target
