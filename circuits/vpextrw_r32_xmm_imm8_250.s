  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode              
.target:                                    #        0     0      OPC=<label>         
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label     
  cmpxchgb %dh, %dh                         #  2     0x5   3      OPC=cmpxchgb_rh_rh  
  callq .read_sf_into_rbx                   #  3     0x8   5      OPC=callq_label     
  xaddw %bx, %dx                            #  4     0xd   4      OPC=xaddw_r16_r16   
  retq                                      #  5     0x11  1      OPC=retq            
                                                                                      
.size target, .-target
