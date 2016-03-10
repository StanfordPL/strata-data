  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                                      #  Line  RIP   Bytes  Opcode              
.target:                                    #        0     0      OPC=<label>         
  xorps %xmm1, %xmm1                        #  1     0     3      OPC=xorps_xmm_xmm   
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  2     0x3   5      OPC=callq_label     
  setnl %dh                                 #  3     0x8   3      OPC=setnl_rh        
  xorl %edx, %r8d                           #  4     0xb   3      OPC=xorl_r32_r32    
  cmovzl %ecx, %ebx                         #  5     0xe   3      OPC=cmovzl_r32_r32  
  retq                                      #  6     0x11  1      OPC=retq            
                                                                                      
.size target, .-target
