  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                  
.target:                                    #        0     0      OPC=<label>             
  vxorps %xmm8, %xmm8, %xmm1                #  1     0     5      OPC=vxorps_xmm_xmm_xmm  
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  2     0x5   5      OPC=callq_label         
  setge %al                                 #  3     0xa   3      OPC=setge_r8            
  xorb %al, %ah                             #  4     0xd   2      OPC=xorb_rh_r8          
  setpo %al                                 #  5     0xf   3      OPC=setpo_r8            
  incl %eax                                 #  6     0x12  2      OPC=incl_r32            
  retq                                      #  7     0x14  1      OPC=retq                
                                                                                          
.size target, .-target
