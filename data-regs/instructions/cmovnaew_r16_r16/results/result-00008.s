  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                      #  Line  RIP   Bytes  Opcode               
.target:                                    #        0     0      OPC=<label>          
  pxor %xmm1, %xmm1                         #  1     0     4      OPC=pxor_xmm_xmm     
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  2     0x4   5      OPC=callq_label      
  adcb %r9b, %r9b                           #  3     0x9   3      OPC=adcb_r8_r8       
  cmovnew %cx, %bx                          #  4     0xc   4      OPC=cmovnew_r16_r16  
  retq                                      #  5     0x10  1      OPC=retq             
                                                                                       
.size target, .-target
