  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                   
.target:                                        #        0     0      OPC=<label>              
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label          
  vpand %xmm6, %xmm7, %xmm12                    #  2     0x5   4      OPC=vpand_xmm_xmm_xmm    
  vhsubps %xmm12, %xmm12, %xmm10                #  3     0x9   5      OPC=vhsubps_xmm_xmm_xmm  
  vcvtss2sil %xmm10, %ebx                       #  4     0xe   5      OPC=vcvtss2sil_r32_xmm   
  movq %xmm5, %rdx                              #  5     0x13  5      OPC=movq_r64_xmm         
  xchgl %edx, %ebx                              #  6     0x18  2      OPC=xchgl_r32_r32        
  retq                                          #  7     0x1a  1      OPC=retq                 
                                                                                               
.size target, .-target
