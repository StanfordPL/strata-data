  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  callq .move_128_064_xmm1_r8_r9    #  1     0     5      OPC=callq_label              
  vfmadd231ss %xmm1, %xmm1, %xmm1   #  2     0x5   5      OPC=vfmadd231ss_xmm_xmm_xmm  
  callq .move_128_064_xmm1_r10_r11  #  3     0xa   5      OPC=callq_label              
  negl %r8d                         #  4     0xf   3      OPC=negl_r32                 
  xorq %rbx, %rbx                   #  5     0x12  3      OPC=xorq_r64_r64             
  cmovnbw %r11w, %r8w               #  6     0x15  5      OPC=cmovnbw_r16_r16          
  xchgw %r8w, %bx                   #  7     0x1a  4      OPC=xchgw_r16_r16            
  retq                              #  8     0x1e  1      OPC=retq                     
                                                                                       
.size target, .-target
