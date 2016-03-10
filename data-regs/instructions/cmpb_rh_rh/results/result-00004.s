  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                    
.target:                                        #        0     0      OPC=<label>               
  vxorps %xmm9, %xmm9, %xmm3                    #  1     0     5      OPC=vxorps_xmm_xmm_xmm    
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  2     0x5   5      OPC=callq_label           
  vbroadcastsd %xmm4, %ymm1                     #  3     0xa   5      OPC=vbroadcastsd_ymm_xmm  
  callq .move_128_064_xmm1_r12_r13              #  4     0xf   5      OPC=callq_label           
  andl %r13d, %r12d                             #  5     0x14  3      OPC=andl_r32_r32          
  cmovcw %r13w, %ax                             #  6     0x17  5      OPC=cmovcw_r16_r16        
  subb %bh, %ah                                 #  7     0x1c  2      OPC=subb_rh_rh            
  retq                                          #  8     0x1e  1      OPC=retq                  
                                                                                                
.size target, .-target
