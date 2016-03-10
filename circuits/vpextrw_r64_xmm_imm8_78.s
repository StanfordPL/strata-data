  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                
.target:                                          #        0     0      OPC=<label>           
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label       
  vmovq %xmm11, %r15                              #  2     0x5   5      OPC=vmovq_r64_xmm     
  movmskpd %xmm10, %ebx                           #  3     0xa   5      OPC=movmskpd_r32_xmm  
  xaddw %r15w, %bx                                #  4     0xf   5      OPC=xaddw_r16_r16     
  retq                                            #  5     0x14  1      OPC=retq              
                                                                                              
.size target, .-target
