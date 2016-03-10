  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  movsldup %xmm2, %xmm3           #  1     0     4      OPC=movsldup_xmm_xmm       
  movddup %xmm2, %xmm9            #  2     0x4   5      OPC=movddup_xmm_xmm        
  vmaxsd %xmm2, %xmm3, %xmm2      #  3     0x9   4      OPC=vmaxsd_xmm_xmm_xmm     
  unpckhps %xmm9, %xmm2           #  4     0xd   4      OPC=unpckhps_xmm_xmm       
  callq .move_128_064_xmm2_r8_r9  #  5     0x11  5      OPC=callq_label            
  callq .move_064_128_r8_r9_xmm1  #  6     0x16  5      OPC=callq_label            
  vcvtsd2ss %xmm9, %xmm3, %xmm7   #  7     0x1b  5      OPC=vcvtsd2ss_xmm_xmm_xmm  
  movhlps %xmm7, %xmm1            #  8     0x20  3      OPC=movhlps_xmm_xmm        
  retq                            #  9     0x23  1      OPC=retq                   
                                                                                   
.size target, .-target
