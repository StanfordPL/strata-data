  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                    
.target:                                    #        0     0      OPC=<label>               
  vmovhlps %xmm1, %xmm1, %xmm1              #  1     0     4      OPC=vmovhlps_xmm_xmm_xmm  
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  2     0x4   5      OPC=callq_label           
  addb %ah, %dh                             #  3     0x9   2      OPC=addb_rh_rh            
  callq .move_032_016_edx_r8w_r9w           #  4     0xb   5      OPC=callq_label           
  sall $0x1, %edx                           #  5     0x10  2      OPC=sall_r32_one          
  callq .read_sf_into_rbx                   #  6     0x12  5      OPC=callq_label           
  xaddw %bx, %r9w                           #  7     0x17  5      OPC=xaddw_r16_r16         
  retq                                      #  8     0x1c  1      OPC=retq                  
                                                                                            
.size target, .-target
