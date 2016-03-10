  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode                  
.target:                            #        0     0      OPC=<label>             
  vpxor %xmm11, %xmm11, %xmm1       #  1     0     5      OPC=vpxor_xmm_xmm_xmm   
  vmovq %xmm1, %xmm9                #  2     0x5   4      OPC=vmovq_xmm_xmm       
  vminps %xmm9, %xmm9, %xmm1        #  3     0x9   5      OPC=vminps_xmm_xmm_xmm  
  callq .move_128_064_xmm1_r12_r13  #  4     0xe   5      OPC=callq_label         
  xchgw %cx, %r13w                  #  5     0x13  4      OPC=xchgw_r16_r16       
  cmovnol %r13d, %ebx               #  6     0x17  4      OPC=cmovnol_r32_r32     
  retq                              #  7     0x1b  1      OPC=retq                
                                                                                  
.size target, .-target
