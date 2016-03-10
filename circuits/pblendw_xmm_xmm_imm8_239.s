  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                  
.target:                                    #        0     0      OPC=<label>             
  callq .move_128_064_xmm2_r12_r13          #  1     0     5      OPC=callq_label         
  vmovsd %xmm2, %xmm1, %xmm2                #  2     0x5   4      OPC=vmovsd_xmm_xmm_xmm  
  callq .set_zf                             #  3     0x9   5      OPC=callq_label         
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  4     0xe   5      OPC=callq_label         
  setz %r13b                                #  5     0x13  4      OPC=setz_r8             
  xchgw %r13w, %r8w                         #  6     0x17  4      OPC=xchgw_r16_r16       
  callq .move_064_128_r12_r13_xmm1          #  7     0x1b  5      OPC=callq_label         
  retq                                      #  8     0x20  1      OPC=retq                
                                                                                          
.size target, .-target
