  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  vmovd %ecx, %xmm10                            #  1     0     4      OPC=vmovd_xmm_r32       
  vminps %xmm10, %xmm10, %xmm1                  #  2     0x4   5      OPC=vminps_xmm_xmm_xmm  
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  3     0x9   5      OPC=callq_label         
  setnae %dh                                    #  4     0xe   3      OPC=setnae_rh           
  salb $0x1, %dh                                #  5     0x11  2      OPC=salb_rh_one         
  cmovnzl %r10d, %ebx                           #  6     0x13  4      OPC=cmovnzl_r32_r32     
  retq                                          #  7     0x17  1      OPC=retq                
                                                                                              
.size target, .-target
