  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                    
.target:                                    #        0     0      OPC=<label>               
  callq .read_pf_into_rcx                   #  1     0     5      OPC=callq_label           
  xchgb %ch, %cl                            #  2     0x5   2      OPC=xchgb_r8_rh           
  vmovq %rcx, %xmm5                         #  3     0x7   5      OPC=vmovq_xmm_r64         
  vpbroadcastq %xmm5, %xmm1                 #  4     0xc   5      OPC=vpbroadcastq_xmm_xmm  
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  5     0x11  5      OPC=callq_label           
  retq                                      #  6     0x16  1      OPC=retq                  
                                                                                            
.size target, .-target
