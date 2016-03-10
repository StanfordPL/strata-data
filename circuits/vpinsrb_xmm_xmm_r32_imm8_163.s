  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                     
.target:                             #        0     0      OPC=<label>                
  callq .move_128_064_xmm2_r8_r9     #  1     0     5      OPC=callq_label            
  vcvtsd2ss %xmm2, %xmm2, %xmm12     #  2     0x5   4      OPC=vcvtsd2ss_xmm_xmm_xmm  
  vmovss %xmm2, %xmm12, %xmm1        #  3     0x9   4      OPC=vmovss_xmm_xmm_xmm     
  xaddw %r9w, %bx                    #  4     0xd   5      OPC=xaddw_r16_r16          
  callq .move_r9b_to_byte_3_of_ymm1  #  5     0x12  5      OPC=callq_label            
  retq                               #  6     0x17  1      OPC=retq                   
                                                                                      
.size target, .-target
